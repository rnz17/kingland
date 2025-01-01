@include('partials.head')

<body>

    @include('partials.nav')

    <!-- Slideshow container -->
    <div class="block overflow-hidden relative z-0 h-auto">
      <!-- Slides -->
      <div class="flex transition-transform duration-500" id="slides">
        <div class="w-full flex-shrink-0">
          <img src="{{ asset('images/sample1.jpg') }}" alt="Slide 1" class="w-full h-[86vh] object-cover object-top">
        </div>
        <div class="w-full flex-shrink-0">
          <img src="{{ asset('images/sample2.jpg') }}" alt="Slide 2" class="w-full h-[86vh] object-cover object-center">
        </div>
        <div class="w-full flex-shrink-0">
          <img src="{{ asset('images/sample3.jpg') }}" alt="Slide 3" class="w-full h-[86vh] object-cover object-bottom-50">
        </div>
    </div>

    </div>
    
    <div class="block flex justify-center space-x-4 mt-2 z-0" id="indicators">
        <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="0"></button>
        <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="1"></button>
        <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="2"></button>
    </div>

    <!-- SERVICES -->

        <!-- services modal -->
    <div id="modal" class="hidden fixed z-20 top-0 left-0 h-screen w-screen bg-transparent justify-center backdrop-blur-md items-center p-4">
        <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 transform -translate-x-1/2 -translate-y-1/2 w-1/2 h-1/2 bg-white shadow-2xl p-8 rounded">
            <img src="{{ asset('images/placeholder.png') }}" class="w-40 my-4 shadow-md mx-auto">
            <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
            <button id="closeModalBtn" class="mt-4 px-4 py-2 bg-red-500 text-white rounded-md">Close</button>
        </div>
    </div>    

    <div class="relative block text-center w-full mt-2 py-2 h-auto mb-2">
        <h1 class="font-black text-darkblue text-2xl">OUR SERVICES</h1>
        <h1 class="mt-2 font-medium text-darkblue text-2xl">Services and Products we provide</h1>
        <div class="flex flex-wrap justify-center items-center gap-20 mt-20">
            <button class="openModalBtn w-52 h-52 rounded-full mx-0 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 1
            </button>
            <button class="openModalBtn w-52 h-52 rounded-full mx-0 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 2
            </button>
            <button class="openModalBtn w-52 h-52 rounded-full mx-0 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 3
            </button>
            <button class="openModalBtn w-52 h-52 rounded-full mx-0 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 4
            </button>
            <button class="openModalBtn w-52 h-52 rounded-full mx-0 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 5
            </button>
        </div>
        <div class="flex flex-wrap justify-center items-center w-[83vw] mx-auto gap-20 mt-20">
            <button class="openModalBtn w-52 h-52 rounded-full mx-4 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 6
            </button>
            <button class="openModalBtn w-52 h-52 rounded-full mx-4 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 7
            </button>
            <button class="openModalBtn w-52 h-52 rounded-full mx-4 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 8
            </button>
            <button class="openModalBtn w-52 h-52 rounded-full mx-4 text-white -my-8 bg-blue border border-transparent border-opacity-50 hover:border-gray mx-auto transform duration-300 hover:shadow-2xl hover:scale-110">service 9
            </button>
        </div>
    </div>
    
@include('partials.footer')

</body>

<script>

    // SLIDESHOW SCRIPT
    const slides = document.getElementById('slides');
    const indicators = document.querySelectorAll('#indicators button');
    let currentIndex = 0;

    function updateSlide(index) {
      slides.style.transform = `translateX(-${index * 100}%)`;
      indicators.forEach((indicator, i) => {
        indicator.classList.toggle('bg-gray-800', i === index);
        indicator.classList.toggle('bg-gray-400', i !== index);
      });
    }

    indicators.forEach((indicator, i) => {
      indicator.addEventListener('click', () => {
        currentIndex = i;
        updateSlide(currentIndex);
      });
    });

    setInterval(() => {
    currentIndex = (currentIndex + 1) % indicators.length;
    updateSlide(currentIndex);
    }, 3000);

    // Initialize the first slide as active
    updateSlide(currentIndex);


    // MODAL SCRIPT
    // Get modal and buttons
    const modal = document.getElementById('modal');
    const openModalBtns = document.querySelectorAll('.openModalBtn');
    const closeModalBtn = document.getElementById('closeModalBtn');
    const nav = document.getElementById('nav');

    // Open modal when any button with the 'openModalBtn' class is clicked
    openModalBtns.forEach(btn => {
      btn.addEventListener('click', () => {
        modal.classList.remove('hidden');
        nav.classList.add('hidden');
      });
    });

    // Close modal when the close button is clicked
    closeModalBtn.addEventListener('click', () => {
      modal.classList.add('hidden');
      nav.classList.remove('hidden');
    });

    // Optional: Close modal if clicked outside the modal content
    modal.addEventListener('click', (e) => {
      if (e.target === modal) {
        modal.classList.add('hidden');
      }
    });
</script>
</html>