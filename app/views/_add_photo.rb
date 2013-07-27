<form action="/albums/<%= @album.id %>" method="post" enctype="multipart/form-data">
   <input type="file" name="image">
   <input type="submit" value="Upload">
 </form>