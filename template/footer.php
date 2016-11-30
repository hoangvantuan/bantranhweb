<footer>
  <div class="container">
        <hr/>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-md-12">
                      <p>Copyright &copy; 2014 by Code team VN-K56 </p>
                </div>
            </div>
        </footer>

    </div>

</footer>


<script type="text/javascript" src="asset/js/jquery-1.11.0.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
<script type="text/javascript">
   $(document).ready(function () {
       $('.theme').click(function () {
           $('.theme-list').toggleClass('hidden-xs');
           $('.theme b').toggleClass('glyphicon-plus-sign').toggleClass('glyphicon-minus-sign');
           });
           $('.material').click(function () {
           $('.material-list').toggleClass('hidden-xs');
           $('.material b').toggleClass('glyphicon-plus-sign').toggleClass('glyphicon-minus-sign');
           });
             $('.provider').click(function () {
           $('.provider-list').toggleClass('hidden-xs');
           $('.provider b').toggleClass('glyphicon-plus-sign').toggleClass('glyphicon-minus-sign');
       });
   }
   );
</script>
</body>
</html>