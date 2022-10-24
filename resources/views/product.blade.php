<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Product Management System </title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
 
<div class="container">
    <h2 class="alert alert-success mt-3 text-center">Product Management System </h2><br>
    <div class="row">
        <div class="col-12">
          <a href="javascript:void(0)" class="btn btn-success mb-2" data-toggle="modal" data-target="#addProduct">Add product</a> 
          
          <table class="table table-bordered" id="laravel_crud">
           <thead>
              <tr>
                 <th>Id</th>
                 <th>Title</th>
                 <th>Details</th>
                 <th>Price</th>
                 <th>Variation ID</th>
                 <th>Status</th>
                 <td colspan="2">Action</td>
              </tr>
           </thead>
           <tbody id="product-crud">
              @foreach($products as $product)
              <tr id="product_id_{{ $product->id }}">
                 <td>{{ $product->id  }}</td>
                 <td>{{ $product->title }}</td>
                 <td>{{ $product->details }}</td>
                 <td>{{ $product->price }}</td>
                 <td>{{ $product->variation_id }}</td>
                 <td>{{ $product->status }}</td>
                 <td><a href="javascript:void(0)" id="edit-post" data-id="{{ $product->id }}" class="btn btn-info">Edit</a></td>
                 <td>
                  <a href="javascript:void(0)" id="delete-post" data-id="{{ $product->id }}" class="btn btn-danger delete-post">Delete</a></td>
              </tr>
              @endforeach
           </tbody>
          </table>
          
       </div> 
    </div>
</div>
     
<!-- Add Modal -->
  <div class="modal fade" id="addProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add new product</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form id=addForm>
                <div class="form-group">
                  <label for="product-name" class="col-form-label">Title</label>
                  <input type="text" class="form-control" id="title">
                </div>
                <div class="form-group">
                  <label for="product-details" class="col-form-label">Details</label>
                  <textarea class="form-control" id="details"></textarea>
                </div>
                <div class="form-group">
                    <label for="product-price" class="col-form-label">Price</label>
                    <input type="text" class="form-control" id="price">
                </div>
                <div class="form-group">
                    <label for="variation-id" class="col-form-label">Variation ID</label>
                    <input type="number" class="form-control" id="variation-id">
                </div>
                <div class="form-group">
                    <label for="status" class="col-form-label">Status</label>
                    <input type="text" class="form-control" id="status">
                </div>
              </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" onclick="addProduct()">Save product</button>
        </div>
      </div>
    </div>
  </div>

  
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>



<script>
     $.ajaxSetup({
       headers: {
           'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });


    function addProduct(){
      var title =  $('#title').val();
      var details =  $('#details').val();
      var price =  $('#price').val();
      var variation_id =  $('#variation_id').val();
      var status =  $('#status').val();

        $.ajax({
            type:"POST",
            dataType:"json",
            data:{
                title:title,
                details:details,
                price:price, 
                variation_id:variation_id,
                status:status
            },
            url:"product",
            success:function(data){
                console.log('Product added !!!');
            }
        })
    }
    
  </script>

</body>
</html>
