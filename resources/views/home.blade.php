@include('partials.head')
    @include('partials.nav')
    <!-- SLIDESHOW -->
      <div class="relative h-[50vh] flex overflow-hidden bg-blue">

        <div id="img1" class="absolute left-1/2 top-1/2 active h-[50vh] w-full transform -translate-x-1/2 -translate-y-1/2 duration-1000 ease-linear bg-cover bg-center z-10 opacity-100" style="background-image: url('/images/kingland/sample1.jpg');">
        </div>
        <div id="img2" class="absolute left-1/2 top-1/2 h-0 w-full m-auto transform -translate-x-1/2 -translate-y-1/2  duration-1000 ease-linear bg-cover bg-center z-20 opacity-0" style="background-image: url('/images/kingland/sample2.jpg');">
        </div>
        <div id="img3" class="absolute left-1/2 top-1/2 h-0 w-full m-auto transform -translate-x-1/2 -translate-y-1/2  duration-1000 ease-linear bg-cover bg-center z-20 opacity-0" style="background-image: url('/images/kingland/sample2.jpg');">
        </div>
        <div id="img4" class="absolute left-1/2 top-1/2 h-0 w-full m-auto transform -translate-x-1/2 -translate-y-1/2  duration-1000 ease-linear bg-cover bg-center z-30 opacity-0" style="background-image: url('/images/kingland/sample3.jpg');">
        </div>

      </div>
    <!-- PARTNERS (HIDDEN) -->
      <div class="hidden flex flex-col py-12">
        <h1 class="m-auto text-3xl text-darkblue tracking-wider font-bold">Our Partners</h1>
        <div class="flex flex-wrap py-32 gap-y-12">
          <div class="flex m-auto rounded-full w-64 h-64 overflow-hidden border-2 border-blue shadow-xl">
            <img src="{{ asset('images/partners/credo.png') }}" class="w-full m-auto">
          </div>
          <div class="flex m-auto rounded-full w-64 h-64 overflow-hidden border-2 border-blue shadow-xl">
            <img src="{{ asset('images/partners/mei.jpg') }}" class="w-full m-auto">
          </div>
          <div class="flex m-auto rounded-full w-64 h-64 overflow-hidden border-2 border-blue shadow-xl">
            <img src="{{ asset('images/partners/deped.jpg') }}" class="w-full m-auto">
          </div>
          <div class="flex m-auto rounded-full w-64 h-64 overflow-hidden border-2 border-blue shadow-xl">
            <img src="{{ asset('images/partners/twinpack.png') }}" class="w-full m-auto">
          </div>
        </div>
      </div>
    <!-- BLOG -->
      <!-- blog header -->
        <div class="flex w-full">
          <div class="m-auto text-center py-12">
            <h1 class="text-3xl text-darkblue tracking-wider font-bold">Our Latest Stories</h1>
          </div>
        </div>

      <!-- Card Container -->
        <div class="m-auto flex flex-wrap pb-16 w-full gap-y-2 lg:gap-y-4 gap-x-2 lg:px-24">

          <!-- Cards -->
          @foreach($blogs as $blog)
            <div class="card group pt-48 lg:pt-44 m-auto mt-0 hover:z-50 duration-500">
              <a href="{{ route('blog.show', $blog->id) }}"  class="m-auto mt-0">
                <div class="m-auto flex flex-col w-5/6 md:w-5/12 lg:w-[23vw] h-auto min-h-[26rem] bg-notwhite border-2 border-gray border-opacity-20 shadow-xl duration-500 rounded-lg">
                <!-- image -->
                  <div class="mx-auto relative h-auto w-full aspect-[2/1] transform flex justify-center items-center">
                      <div class="flex absolute w-full lg:group-hover:w-[150%] aspect-video lg:aspect-square lg:group-hover:aspect-video bg-lightblue border-2 border-textblue rounded-lg lg:rounded-full bottom-0 lg:group-hover:rounded-lg overflow-hidden shadow-xl duration-500 ease-out">
                        <img src="{{ $blog->image_url ? asset('storage/' . $blog->image_url) : asset('images/kingland/logo.png') }}" class="w-full h-full object-cover"></img>
                      </div>
                  </div>

                  <div class="flex flex-col w-full h-64 overflow-hidden p-2">
                    <div class="flex h-1/3 lg:group-hover:h-full overflow-hidden duration-500 mb-2">
                      <h2 class="m-auto font-bold text-lg text-blue underline">{{ $blog->title }}</h2>
                    </div>
                    <div class="h-full overflow-hidden duration-500">
                      <p class="m-auto text-gray-700 text-base">
                          {!! $blog->content !!}
                      </p>
                    </div>
                  </div>

                </div>
              </a>
            </div>
          @endforeach


        </div>
    
    <!-- SERVICE REDIRECT -->
      <div class="flex mb-32">

        <button class="m-auto relative inline-flex items-center justify-center px-8 py-2.5 overflow-hidden tracking-tighter text-white bg-transparent rounded-md group">
          <span class="absolute w-0 h-0 transition-all duration-1000 ease-out bg-darkbluespan>
          <span class="absolute top-0 right-0 w-12 h-[50vh] -mr-3">
          </span>
          <span class="absolute inset-0 w-full h-[50vh] -mt-1 rounded-lg opacity-30 bg-transparent">
          </span>
          <a href="{{ route('services') }}"><span class="relative text-3xl text-textblueking-widest duration-300 text-decoration underline font-bold">
            Services Offered
          </span></a>
        </button>
      </div>

    
    
    
@include('partials.footer')

</body>

<script>
  const cards = document.querySelectorAll(".card");
  const nav = document.getElementById("nav");

  cards.forEach((card) => {
    card.addEventListener("mouseover", function () {
      cards.forEach((c) => {
        if (c !== this) {
          c.style.opacity = "0.5"; // Reduce opacity of other cards
          c.style.filter = "blur(5px)"; // Apply blur effect
          nav.style.filter = "blur(5px)"; // Apply blur effect
        }
      });
    });

    card.addEventListener("mouseout", function () {
      cards.forEach((c) => {
        c.style.opacity = "1"; // Reset opacity when mouse leaves
        c.style.filter = "none"; // Apply blur effect
        nav.style.filter = "none"; // Apply blur effect
      });
    });
  });

</script>

<script>

  // carousel
    const img1 = document.getElementById('img1');
    const img2 = document.getElementById('img2');
    const img3 = document.getElementById('img3');
    const img4 = document.getElementById('img4');
    const arr = [img1,img2,img3,img4];

    function changeImg() {
      console.log("change image!!");
      var current;
      var next;

      for(let img of arr){
        if(img.classList.contains('active')){
          current = arr.indexOf(img);
          next = (current + 1) % arr.length;
          img.classList.remove('active');
          arr[next].classList.add('active');
          break
        }
      }

      if(next == 0){
        arr[0].classList.add('z-40');
      }else if((next !== 0) || (current !== 0)){
        arr[0].classList.remove('z-40');
      }

      setTimeout(() => {
        arr[next].classList.add('active');
        arr[next].classList.add('h-[50vh]');
        arr[next].classList.add('opacity-100');
        arr[next].classList.remove('h-0');
        arr[next].classList.remove('opacity-0');
      }, 1000);


      setTimeout(() => {
        arr[current].classList.remove('active');
        arr[current].classList.remove('h-[50vh]');
        arr[current].classList.remove('opacity-100');
        arr[current].classList.add('h-0');
        arr[current].classList.add('opacity-0');
        
      }, 2000);

    }

    function handleScrollAndFocus() {
      if (window.scrollY <= 799 && document.hasFocus()) {
        if (!window.intervalId) {
          window.intervalId = setInterval(changeImg, 5000);
        }
      } else {
        if (window.intervalId) {
          clearInterval(window.intervalId);
          window.intervalId = null;
        }
      }
    }

    // Event listener for scrolling
    window.addEventListener('scroll', handleScrollAndFocus);

    // Event listeners for focus and blur
    window.addEventListener('blur', function () {
      if (window.intervalId) {
        clearInterval(window.intervalId);
        window.intervalId = null;
      }
    });

    window.addEventListener('focus', handleScrollAndFocus);



</script>
</html>