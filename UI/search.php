<?php
    $servername = "LOCALHOST";
    $username = "USERNAME";
    $password = "PASSWORD";
    $database = "DATABASE";

    $con = mysqli_connect($servername, $username, $password, $database);
	
     if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
     }
    header("Location: C:\Users\theca\SeekrWebSearch\UI\resultsPage.html");
	
    //GETS QUERY
    if (isset($_GET['search'])) {
        $param = "%{$_GET['search']}%"; //sets the parameter as the query with additional strings to left and right(%)

        //various different searches
        if($_GET['andCheck'] == "on"){    $query = mysqli_prepare($con, "SELECT * FROM Results WHERE Description AND ?");}
        else if($invMatch){$query = mysqli_prepare($con, "SELECT * FROM Results WHERE Description NOT ?");}  
        else if($invMatch){$query = mysqli_prepare($con, "SELECT * FROM Results WHERE Description OR ?");}
        else{$query = mysqli_prepare($con, "SELECT * FROM Results WHERE Description LIKE ?");}

        //executes the full query
        mysqli_stmt_bind_param($query, "s", $param);
        mysqli_stmt_execute($query);

        //compiles results
        $results = mysqli_stmt_get_result($query);
        $rows = mysqli_num_rows($results);
        mysqli_stmt_close($query);
        if ($rows > 0) {
            echo "<h2>Search results for: {$_GET['search']}</h2>";
                 
            //displays results
            while ($result = mysqli_fetch_array($results)) {
                $result_title=$result['Title'];
                $result_url=$result['URL'];
                $result_preview=$result['Preview'];
                    
                echo "<div class='search_result'> 						
                    <h3><a href='$result_url'>$result_title</a></h3>
                    <article><a href='$result_url'>$result_preview</a></article>			
                </div>";
            }   
        } else {
            echo "<h2>No results found for your search: {$_GET['search']}</h2>";
        }
    } else {
        echo "<h2>No search query provided. Please try your search again.</h2>";
    }
    mysqli_close($mysqli);
    exit;
?>