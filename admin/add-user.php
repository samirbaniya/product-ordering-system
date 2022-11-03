<?php include('common/header.php') ?>

    <!-- Body Section Starts -->
    <section class="content">
        <div class="wrapper">
             <h1 class="heading">ADD USER</h1>

             <!-- Users Add Form -->
                <form method="post" action="add-user.php">
                    <table class="table">
                        <tr>
                            <td class="text-right">UserName</td>
                            <td><input type="text" name="user_name" id="user_name" class="form-control"></td>
                        </tr>
                        <tr>
                            <td class="text-right">FullName</td>
                            <td><input type="text" name="full_name" id="full_name" class="form-control"></td>
                        </tr>
                        <tr>
                            <td class="text-right">Password</td>
                            <td><input type="password" name="password" id="password" class="form-control"></td>
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

    <?php 
//Form Submit Code
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){
        echo "Clicked";
    }
}
?>

<?php include('common/footer.php') ?>