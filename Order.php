<?php include('layout/header.php'); ?>

    <!-- Contact Form section -->
    <section class="search ">
        <div class="container">
            <h2 class="text-center text-white ">Please fill the form to order the product</h2>
            <form action="" class="form-horizontal">
                <fieldset>
                    <legend>Selected Food:</legend>
                    <div class="box-img">
                        <img src="images/pizza.jpg" alt="Menu Pizza" class="img-responsive img-rounded">
                    </div>
                    <div class="box-desc">
                        <h4>ChickenCrunchy Pizza</h4>
                        <p class="item-price">Rs.200</p>
                        <p class="item-desc">Masale dar pizza with spicy chicken..</p>
                        <!-- <a href="#" class="btn btn-primary">Order Now</a> -->
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Order Detail:</legend>
                    <label for="">Name</label>
                    <input class="form-control" type="text" name="name" id="name" required placeholder="Eg.Samir Baniya">
    
                    <label for="">Email</label>
                    <input class="form-control" type="text" name="email" id="email" required placeholder="Eg.samirbaniya500@gmail.com">
    
                    <label for="">Address</label>
                    <input class="form-control" type="text" name="address" id="address" required placeholder="Eg.Banepa-5,Dhaneshwor">

                    <label for="">Quantity</label>
                    <input class="form-control" type="number" min="1" name="quantity" required id="quantity" value="1">

                    <label for="">Feedback</label>
                    <textarea class="form-control" name="feedback" id="feedback" cols="30" rows="10" placeholder="Enter your feedback.."></textarea>
    
                    <button class="btn btn-primary">Submit</button>
                </fieldset>
               
            </form>
        </div>
    </section>
    <!-- Contact Form Section Ends -->

    <?php include('layout/footer.php'); ?>
