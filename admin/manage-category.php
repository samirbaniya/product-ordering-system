<?php include('common/header.php') ?>

    <!-- Body Section Starts -->
    <section class="content">
        <div class="wrapper">
             <strong class="heading">MANAGE CATEGORY</strong><br>
       
             <?php include('config/session.php') ?>
             <br>
                <a class="btn btn-secondary category-add" href="add-category.php"> Add Category</a>
             <br>

             <!-- Users Table -->
                <table class="table">
                    <thead>
                       <tr>
                            <th>SN</th>
                            <th>Title</th>
                            <th>Slug</th>
                            <th>ImageName</th>
                            <th>Featured</th>
                            <th>Status</th>
                       </tr> 
                    </thead>
                    <tbody>
                        <?php 
                        //making the sql to fetch the data from users table
                        $sql = "SELECT * FROM `categories`";
                        
                        //execute the query
                        $exec = mysqli_query($conn, $sql);

                        //if there is something
                        if($exec == TRUE){
                            //count the number of rows
                            $count = mysqli_num_rows($exec);
                            if($count > 0){
                                $sn=1;
                                while( $rows = mysqli_fetch_assoc($exec)){
                                    $id = $rows['id'];
                                    $title = $rows['title'];
                                    $slug = $rows['slug'];
                                    $image_name = $rows['image_name'];
                                    $featured = $rows['featured'];
                                    $status = $rows['status'];
                                    ?>
                                    <tr>
                                        <td><?php echo $sn++; ?></td>
                                        <td><?php echo $title; ?></td>
                                        <td><?php echo $slug; ?></td>
                                        <td><?php echo $image_name; ?></td>
                                        <td><?php echo $featured; ?></td>
                                        <td><?php echo $status; ?></td>
                                        
                                    </tr>
                                    <?php 
                                }  
                            }else{
                                echo'<tr><td colspan="4">No rows to display</td></tr>';
                            }
                        }
                        
                        ?>
                        
                    </tbody>
                </table>
             <!-- Users Table End -->
        </div>
    </section>
    <!-- Body Section Ends -->

<?php include('common/footer.php') ?>
