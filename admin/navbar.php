
<style>
	.collapse a{
		text-indent:10px;
	}
	nav#sidebar{
		/*background: url(assets/uploads/<?php echo $_SESSION['system']['cover_img'] ?>) !important*/
	}
</style>

<nav id="sidebar" class='mx-lt-5 bg-dark' >
		
		<div class="sidebar-list">
				<a href="index.php?page=home" class="nav-item nav-home"><span class='icon-field'><i class="fa fa-tachometer-alt "></i></span> Dashboard</a>
				
				<?php if($_SESSION['login_type'] == 1): ?>
				
				<a href="index.php?page=author" class="nav-item nav-author"><span class='icon-field'><i class="fa fa-list-alt "></i></span> Authors</a>
				<a href="index.php?page=books" class="nav-item nav-books"><span class='icon-field'><i class="fa fa-book "></i></span> Books</a>
				<?php endif; ?>
				
				
				<?php if($_SESSION['login_type'] == 1): ?>
				
				
				
			<?php endif; ?>
		</div>

</nav>
<script>
	$('.nav_collapse').click(function(){
		console.log($(this).attr('href'))
		$($(this).attr('href')).collapse()
	})
	$('.nav-<?php echo isset($_GET['page']) ? $_GET['page'] : '' ?>').addClass('active')
</script>
