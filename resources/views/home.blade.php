@include('partials.head')
    @include('partials.nav')
    <!-- SLIDESHOW -->
      <div class="relative h-[50vh] flex overflow-hidden bg-white">
        @if ($images->isNotEmpty())
            @foreach($images as $index => $item)
                <div 
                    class="absolute left-1/2 top-1/2 w-full h-[50vh] transform -translate-x-1/2 -translate-y-1/2 duration-1000 ease-linear bg-cover bg-center opacity-0 transition-opacity"
                    style="background-image: url('{{ asset('storage/' . $item->fileName) }}');"
                    data-index="{{ $index }}">
                </div>
            @endforeach
        @else
            <div 
                class="m-auto w-[95%] h-[95%] bg-cover bg-contain bg-no-repeat"
                style="background-image: url('{{ asset('images/kingland/text_color.png') }}');">
            </div>
        @endif


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
        <div class="m-auto flex flex-wrap pb-16 w-full gap-y-2 lg:gap-y-4 gap-x-2 lg:px-36">

          <!-- Cards -->
          @foreach($blogs as $blog)
            <div class="card group pt-48 lg:pt-44 m-auto mt-0 hover:z-50 duration-500">
              <a href="{{ route('blog.show', $blog->id) }}"  class="m-auto mt-0">
                <div class="m-auto flex flex-col w-5/6 md:w-5/12 lg:w-[18vw] h-auto min-h-[26rem] hover:scale-105 bg-notwhite border-2 border-gray border-opacity-20 shadow-sm group-hover:shadow-xl duration-500 rounded-lg">
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
        }
      });
    });

    card.addEventListener("mouseout", function () {
      cards.forEach((c) => {
        c.style.opacity = "1"; // Reset opacity when mouse leaves
        c.style.filter = "none"; // Apply blur effect
      });
    });
  });

</script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        let slides = document.querySelectorAll("[data-index]");
        let currentIndex = 0;
        let slideInterval = 3000; // Change slide every 3 seconds

        function showSlide(index) {
            slides.forEach((slide, i) => {
                slide.style.opacity = i === index ? "1" : "0";
                slide.style.zIndex = i === index ? "10" : "5";
            });
        }

        function nextSlide() {
            currentIndex = (currentIndex + 1) % slides.length;
            showSlide(currentIndex);
        }

        // Initialize first slide
        showSlide(currentIndex);
        setInterval(nextSlide, slideInterval);
    });
</script>

</html>