<?php include('common/header.php') ?>

    <!-- Body Section Starts -->
    <section class="content">
        <div class="wrapper">
             <h1 class="heading">MANAGE USERS</h1>

             <br>
                <a class="btn btn-secondary user-add" href="add-user.php"> Add User</a>
             <br>

             <!-- Users Table -->
                <table class="table">
                    <thead>
                       <tr>
                            <th>SN</th>
                            <th>FullName</th>
                            <th>UserName</th>
                            <th>Password</th>
                            <th>Action</th>
                       </tr> 
                    </thead>
                    <tbody>
                        <tr>
                           <td>1</td> 
                           <td>sam</td>
                           <td>samstar</td>
                           <td>something</td>
                           <td>
                            <a class="btn btn-primary" href="#">
                                Edit User
                            </a>
                            <a class="btn btn-danger" href="#">
                                Delete User
                            </a>
                           </td>
                        </tr>
                    </tbody>
                </table>
             <!-- Users Table End -->
        </div>
    </section>
    <!-- Body Section Ends -->

<?php include('common/footer.php') ?>
</body>
</html> 