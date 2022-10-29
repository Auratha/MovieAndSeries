<input type="hidden" id='filename' value="<?php echo basename($_SERVER['PHP_SELF']) ?>">

<!-- Navbar Section Start -->
<nav class="navbar navbar-expand-md bg-light">
            <div class="container-fluid">
              <a class="navbar-brand ms-5" href="#"><img src="img/logo.png" alt="website logo" width="120px" height="40px"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto ms-5 mb-2 mb-lg-0">
                  <li class="nav-item mx-3">
                    <a class="nav-link" aria-current="page" href="index.php">Home</a>
                  </li>
                  <li class="nav-item mx-3">
                    <a class="nav-link" href="movies.php">Movies</a>
                  </li>
                  <li class="nav-item mx-3">
                    <a class="nav-link" href="series.php">Series</a>
                  </li> 
                </ul>
                <form class="d-flex align-items-center me-5" role="search">
                  <input type="text" class="search-input" placeholder="Search...">
                  <i class="fa-sharp fa-solid fa-magnifying-glass search-icon"></i>
                </form>
              </div>
            </div>
        </nav>
        <!-- Navbar Section End -->