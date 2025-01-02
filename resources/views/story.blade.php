@include('partials.head')

<body>

    @include('partials.nav')

    <main class="">
        <!-- static bg for error workaround -->
        <div class="w-full h-[86vh] bg-cover bg-center" style="background-image: url('/images/sample2.jpg');">
            <div class="w-full h-full bg-gradient-to-r from-tdblue to-transparent">
                <!-- text container -->
                <div class="relative block w-2/3 top-1/2 transform -translate-y-1/2">
                    <h1 class="text-white font-black text-7xl ml-28 tracking-wide">Our Story</h1>
                    <h1 class="text-white font-semibold text-2xl ml-28 mt-4"><span class="text-3xl">Kingland’s</span> story is one of passion, vision, and collaboration.</h1>
                    <p class="text-white font-light text-lg ml-28 mt-4 pr-42 tracking-wide">It all started with Richard Abanilla, <span class="font-semibold">the President and CEO</span> and Katrina Abanilla, <span class="font-semibold">the Vice President and COO</span>, who believed in the power of business to change lives and make a real difference in the world. Their vision was clear: create a company that not only thrived in the marketplace but also put people first, embraced innovation, and contributed positively to society. But they didn’t stop there—they knew that true success came from collaboration.</p>
                </div>
            </div>
        </div>

        <!-- WHITE -->
        <div class="flex w-full py-2 mt-12">
            <div class="w-1/3 px-22 m-auto text-center">
                <h1 class="text-black font-light text-2xl tracking-normal leading-loose"><span class="tracking-wide font-semibold px-24">To bring their vision to life,</span> they invited six additional <a href="#" class="text-darkblue underline underline-offest-4">founders</a>, each bringing their own unique expertise and experiences.</h1>
            </div>
        </div>

        <div class="block w-full py-12">
            <div class="w-full px-28 m-auto text-center">
                <h1 class="text-black font-light text-2xl tracking-normal leading-loose">Together, they combined their talents to build a company where innovation, responsibility, and a commitment to making a difference were at the heart of everything. Kingland wasn’t just about business; it was about building a community that cared for each other, its customers, and the world around them.
                </h1>
            </div>
        </div>

        <!-- slideshow container -->
        <div class="block mx-auto border border-gray shadow-lg overflow-hidden relative z-0 w-3/4 h-auto rounded-xl">
            <!-- Slides -->
            <div class="flex transition-transform duration-500" id="slides">
                <div class="w-full flex-shrink-0">
                <img src="{{ asset('images/sample1.jpg') }}" alt="Slide 1" class="w-full h-[22rem] object-cover object-top">
                </div>
                <div class="w-full flex-shrink-0">
                <img src="{{ asset('images/sample2.jpg') }}" alt="Slide 2" class="w-full h-[22rem] object-cover object-center">
                </div>
                <div class="w-full flex-shrink-0">
                <img src="{{ asset('images/sample3.jpg') }}" alt="Slide 3" class="w-full h-[22rem] object-cover object-bottom-50">
                </div>
            </div>
        </div>

        <div class="hidden flex justify-center space-x-4 mt-2 z-0" id="indicators">
            <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="0"></button>
            <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="1"></button>
            <button class="w-3 h-3 rounded-full bg-gray bg-opacity-50" data-slide="2"></button>
        </div>

        <!-- slideshow end -->


        <div class="relative flex w-full h-auto bg-cover mt-24" style="background-image: url('/images/sample3.jpg');">
            <div class="w-full p-12 h-[46rem] bg-gradient-to-b from-white from-1% to-transparent">
                <p class="text-black font-light text-2xl text-center tracking-normal leading-normal">
                The founders shared a common belief: success is about more than just profits. It’s about transforming lives, offering innovative solutions, and creating a sustainable future. They understood that by working together, they could achieve more—by introducing revolutionary technologies, developing products that make life easier, and taking a stand for social and environmental responsibility.
                </p>
            </div>
        </div>



    </main>

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
</script>