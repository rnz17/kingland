@include('partials.head')



    @include('partials.nav')

    <main class="">
        <!-- static bg for error workaround -->
        <div class="w-full h-[86vh] bg-cover bg-center" style="background-image: url('/images/sample2.jpg');">
            <div class="w-full h-full bg-gradient-to-r from-tdblue to-transparent">
                <!-- text container -->
                <div class="relative block w-3/4 mx-auto text-center lg:text-left lg:ml-0 lg:w-2/3 top-1/2 transform -translate-y-1/2">
                    <h1 class="text-white font-black text-2xl lg:text-7xl lg:ml-28 lg:leading-[4.8rem] tracking-wide">Making Every Day, </h1>
                    <h1 class="text-blue font-black text-2xl lg:text-7xl lg:ml-28 lg:leading-[4.8rem] tracking-wide">Beyond The Ordinary </h1>

                    <h1 class="text-white font-semibold lg:text-2xl lg:ml-28 mt-4">Kingland’s story is one of passion, vision, and collaboration.</h1>
                    <p class="text-white font-light lg:text-lg lg:ml-28 mt-4 pr-42 tracking-wide">It all started with Richard Abanilla, <span class="font-semibold">the President/CEO and Chairman of the Board</span><br> and Katrina Abanilla, <span class="font-semibold">the Vice President/COO</span>, who believed in the power of business to change lives and make a real difference in the world. Their vision was clear: create a company that not only thrived in the marketplace but also put people first, embraced innovation, and contributed positively to society. But they didn’t stop there—they knew that true success came from collaboration.</p>
                </div>
            </div>
        </div>

        <!-- WHITE -->
        <div class="flex text-center w-full py-2 mt-12 text-black font-light text-2xl tracking-normal leading-loose">
            <div class="w-3/4 lg:w-1/3 m-auto">
                <h1 class="trasking-wide font-semibold">To bring their vision to life,</h1>
                <h1>they invited six additional <span class="text-blue underline"><a href="{{ '/founders' }}">founders</a></span>, each bringing their own unique expertise and experiences.<br><br>
                </h1>

                <h1 class="text-black font-light text-2xl tracking-normal leading-loose">Together, they combined their talents to build a company where innovation, responsibility, and a commitment to making a difference were at the heart of everything. Kingland wasn’t just about business; it was about building a community that cared for each other, its customers, and the world around them.<br><br>
                </h1>
            </div>
        </div>

        <!-- slideshow container -->
        <div class="block mx-auto lg:border border-gray lg:shadow-lg overflow-hidden lg:relative z-0 w-full lg:w-3/4 h-auto lg:rounded-xl">
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
            <div id="changeBG" class="w-full p-12 h-[46rem] bg-gradient-to-b from-white from-1% to-transparent">
                <p class="text-black font-light text-2xl text-center tracking-normal leading-normal">
                The founders shared a common belief: success is about more than just profits. It’s about transforming lives, offering innovative solutions, and creating a sustainable future. They understood that by working together, they could achieve more—by introducing revolutionary technologies, developing products that make life easier, and taking a stand for social and environmental responsibility.
                </p>

                
                <p class="text-black font-light text-2xl text-center tracking-normal leading-normal mt-12">
                At Kingland, the founders don’t just talk about values—they live them every day. They prioritize work-life balance, knowing that happy, fulfilled employees are the key to a thriving company. They put people first, whether it’s their employees, customers, or communities they serve. They continuously strive to create innovative products and services that solve real-world problems, making life better for everyone.
                </p>
            </div>
        </div>

        <div class="mt-64 pt-32 px-12 lg:my-16 lg:pt-12">
            <p class="text-black font-light text-2xl text-center tracking-normal leading-normal">
            With a strong foundation built on collaboration and a shared purpose, Kingland continues to grow and inspire. Their mission is simple: to create a lasting impact through everything they do. They want to build a company that stands the test of time, leaving a legacy of positive change for future generations. Kingland’s journey is just beginning, but one thing is certain—the values of innovation, social responsibility, and putting people first will always guide them toward greater success.
            </p>
        </div>



    </main>

@include('partials.footer')

</body>
<script>
    window.addEventListener('resize', () => {
        if (window.innerWidth < 1023) {
            document.getElementById('changeBG').classList.add('bg-white');
        }
    });

    // Initial check
    if (window.innerWidth < 1023) {
        document.getElementById('changeBG').classList.add('bg-white');
    }

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