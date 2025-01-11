<div class="block mx-auto border border-gray shadow-lg overflow-hidden relative z-0 w-3/4 h-auto rounded-xl">
    <!-- Slides -->
    <div class="flex transition-transform duration-500" id="slides">
        <div class="w-full flex-shrink-0">
        <img src="{{ asset('images/kingland/sample1.jpg') }}" alt="Slide 1" class="w-full h-[22rem] object-cover object-top">
        </div>
        <div class="w-full flex-shrink-0">
        <img src="{{ asset('images/kingland/sample2.jpg') }}" alt="Slide 2" class="w-full h-[22rem] object-cover object-center">
        </div>
        <div class="w-full flex-shrink-0">
        <img src="{{ asset('images/kingland/sample3.jpg') }}" alt="Slide 3" class="w-full h-[22rem] object-cover object-bottom-50">
        </div>
    </div>
</div>

<div class="hidden flex justify-center space-x-4 mt-2 z-0" id="indicators">
    <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="0"></button>
    <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="1"></button>
    <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="2"></button>
</div>

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
</script>