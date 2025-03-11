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
      <!-- header -->
        <div class="flex w-full text-center py-12">
            <h1 class="m-auto text-3xl text-darkblue tracking-wider font-bold">Our Latest Stories</h1>
        </div>

      <!-- Blog container -->
        <div class="m-auto flex flex-wrap py-12 w-full gap-x-0 mt-[6vw]">

          <!-- card container -->
            <div class="m-auto flex bg-notwhite w-1/4 h-[35vh] shadow-xl bg-red-300">
              <div class="m-auto flex bg-red-200 rounded-2xl">

              </div>
            </div>
          <!-- card end -->

        </div>
    
    <!-- SERVICE REDIRECT -->
      <div class="flex mb-32">

        <button class="m-auto relative inline-flex items-center justify-center px-8 py-2.5 overflow-hidden tracking-tighter text-white bg-transparent rounded-md group">
          <span class="absolute w-0 h-0 transition-all duration-1000 ease-out bg-darkblue group-hover:w-[27vw] group-hover:h-[27vw]"></span>
          <span class="absolute top-0 right-0 w-12 h-[50vh] -mr-3">
          </span>
          <span class="absolute inset-0 w-full h-[50vh] -mt-1 rounded-lg opacity-30 bg-transparent">
          </span>
          <a href="{{ route('services') }}"><span class="relative text-3xl text-textblue group-hover:text-white tracking-widest duration-300 text-decoration underline font-bold">
            Services Offered
          </span></a>
        </button>
      </div>

    
    
    
@include('partials.footer')

</body>

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