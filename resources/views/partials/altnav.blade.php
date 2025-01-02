<nav id="nav" class="flex h-24">
    <button onclick="window.location.href='/'" class="h-full w-auto">
        <h1 class="m-0 pl-8 text-3xl font-medium tracking-wider">Kingland Marketing Company Inc.</h1>
    </button>
    <button onclick="window.location.href='/'" class="h-full w-auto">
        <h1 class="m-0 pl-8 text-3xl font-medium tracking-wider">Home</h1>
    </button>
    <button onclick="window.location.href='/'" class="h-full w-auto">
        <h1 class="m-0 pl-8 text-3xl font-medium tracking-wider">Our Story</h1>
    </button>
    <button onclick="window.location.href='/'" class="h-full w-auto">
        <h1 class="m-0 pl-8 text-3xl font-medium tracking-wider">What we Sell</h1>
    </button>
    <button onclick="window.location.href='/'" class="h-full w-auto">
        <h1 class="m-0 pl-8 text-3xl font-medium tracking-wider">What we Buy</h1>
    </button>

</nav>

<script>
    function dropdown(div){
        var dropdownMenu = document.getElementById(div);
        console.log("test");
        dropdownMenu.classList.toggle('hidden');
    }

    // Select the image element
    const logoImage = document.getElementById('centerLogo');
    const navBar = document.getElementById('nav');
    

    // Add scroll event listener
    if(window.location.href.includes("/sell") || window.location.href.includes("/buy") || window.location.href.includes("/history")){
        logoImage.classList.remove('translate-y-1/2');
        logoImage.classList.remove('scale-150');
        nav.classList.remove('text-blue')
        nav.classList.add('text-gray')
    }else{
        window.addEventListener('scroll', () => {
            if (window.scrollY > 50) {
                // Remove the class when scrolling wn
                logoImage.classList.remove('translate-y-1/2');
                logoImage.classList.remove('scale-150');
                logoImage.classList.remove('w-32');
                logoImage.classList.add('w-20');
                nav.classList.remove('text-blue')
                nav.classList.add('text-gray')
    
            } else {
                // Add the class back when at the top
                logoImage.classList.add('translate-y-1/2');
                logoImage.classList.add('scale-150');
                logoImage.classList.remove('w-20');
                logoImage.classList.add('w-32');
                nav.classList.add('text-blue')
                nav.classList.remove('text-gray')
            }
        });
    }

</script>
