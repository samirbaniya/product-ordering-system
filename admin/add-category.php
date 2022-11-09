<?php include('common/header.php') ?>

    <!-- Body Section Starts -->
    <section class="content">
        <div class="wrapper">
             <h1 class="heading">ADD Category</h1>
            <br>
            <?php include('config/session.php') ?>
             <!-- Users Add Form -->
                <form method="post" action="add-category.php">
                    <table class="table">
                        <tr>
                            <td class="text-right">Title</td>
                            <td><input type="text" name="title" placeholder="Enter title" id="title" class="form-control"></td>
                        </tr>
                        <tr>
                            <td class="text-right">Slug</td>
                            <td><input type="text" name="slug" placeholder="Enter slug" id="slug" class="form-control"></td>
                        </tr>
                        <tr>
                            <td class="text-right">ImageName</td>
                            <td><input type="text" name="image_name" id="image_name" placeholder="Enter ImageName" class="form-control"></td>
                        </tr>
                        <tr>
                            <td class="text-right">Featured</td>
                            <td><input type="text" name="featured" id="featured" placeholder="Featured" class="form-control"></td>
                        </tr>
                        <tr>
                            <td class="text-right">Status</td>
                            <td><input type="text" name="status" id="status" placeholder="Enter status" class="form-control"></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center"><input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary"></td>
                        </tr>
                    </table>
                </form>
             <!-- Users Add Form End -->
        </div>
    </section>
    <!-- Body Section Ends -->

   

<?php include('common/footer.php') ?>

<?php 
//Form Submit Code
//check if request method is POST or not
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){
        var_dump($_POST);
        $title = $_POST['title'];
        $slug = $_POST['slug'];
        $image_name = $_POST['image_name'];
        $featured = $_POST['featured'];
        $status = $_POST['status'];
        

        //making sql
        $sql = "INSERT INTO categories SET
        title='$title',
        featured='$featured',
        status='$status',
        slug='$slug',
        image_name='$image_name'
        ";

        //Check the connection
        if($conn){
            $execute = mysqli_query($conn, $sql) or die(mysqli_error($conn));
            //create database 
            if($execute = TRUE){
                $_SESSION['message']= '<div class="success"> Category Added Succefully </div>';
                header('location:'.APP_URL.'admin/manage-category.php');
            }else{
                $_SESSION['message'] = '<div class="error"> Could not Add Category Instantly. Try Again </div>';
                header('location:'.APP_URL.'admin/manage-category.php');
            }
        }else{
            die("Connection Failed".mysqli_connect_error());
        }

    }
}
?>