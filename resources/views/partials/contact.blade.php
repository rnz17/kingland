
<div class="flex flex-col w-full bg-gradient-to-b from-lightblue">
    <!-- contact number -->
    <div class="flex flex-col pt-12 pb-6">
        <h1 class="text-center md:text-right text-6xl md:text-6xl font-black m-auto">Contact Us</h1>
    </div>

    <!-- location -->
    <div class="flex flex-col pb-24 pt-12 md:pt-6">
        <div class="flex flex-wrap md:flex-nowrap py-12">
            <!-- details -->
                <div class="flex flex-col m-auto text-center w-5/6 md:w-1/2 p-0 md:p-12">
                    <div class="flex flex-col gap-y-4 px-0 md:px-12 py-12">
                        <a href="https://mail.google.com/mail/?view=cm&fs=1&to=raabanilla@kingland.ph" target="_blank"><h1 class="text-center font-black text-lg md:text-2xl tracking-widest opacity-80 text-textblue">raabanilla@kingland.ph</h1></a>
                        <h1 class="font-black text-2xl tracking-widest opacity-80 text-textblue">09999913432</h1>
                        <h1 class="font-black text-2xl tracking-widest opacity-80 text-textblue">09564572521</h1>
                        
                        <p class="mt-8 text-xl font-semibold text-textblue tracking-wider">Lot 28 Block 7 Phase 4B Golden City, Dila, Santa Rosa City, Laguna</p>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3866.400166885806!2d121.11475!3d14.288166699999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTTCsDE3JzE3LjQiTiAxMjHCsDA2JzUzLjEiRQ!5e0!3m2!1sen!2sph!4v1737252095511!5m2!1sen!2sph" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="m-auto w-full h-[30vh] border-2 border-black border-opacity-20 rounded-[23px] overflow-hidden"></iframe>

                    </div>
                </div>
            <!-- DIVIDER -->
                <div class="hidden md:flex flex-col gap-y-4 w-2 rounded-full bg-gradient-to-t from-lightblue to-notwhite">
                </div>
            <!-- Contact Form -->
                <div class="flex flex-col gap-y-8 m-auto text-center md:text-left w-5/6 md:w-1/2 px-0 md:px-12 py-12">
                    <form action="{{ route('inquiries.store') }}" method="POST" class="flex flex-col items-center space-y-4">
                        @csrf
                        
                        <input type="text" name="name" placeholder="Name" required
                            class="shadow-xl bg-notwhite rounded-xl px-4 py-2 border border-gray-300 w-full md:w-3/4 text-lg font-semibold text-textblue opacity-90">
                        
                        <input type="email" name="email" placeholder="Email" required
                            class="shadow-xl bg-notwhite rounded-xl px-4 py-2 border border-gray-300 w-full md:w-3/4 text-lg font-semibold text-textblue opacity-90">
                        
                        <textarea name="content" placeholder="Please let us know what's on your mind." required
                            class="shadow-xl bg-notwhite rounded-xl px-4 py-2 border border-gray-300 w-full md:w-3/4 text-lg h-32 font-semibold text-textblue opacity-90"></textarea>

                        <button type="submit"
                            class="shadow-xl bg-blue text-white hover:text-black rounded-xl px-6 py-2 border border-gray hover:bg-lightblue transition">
                            Submit
                        </button>
                    </form>


                </div>


        </div>
    </div>

</div>

<script>

    function headLoc() {

        const mapsUrl = `https://maps.app.goo.gl/84mD6DJpfjsGgSEz6`;

        window.open(mapsUrl, "_blank");
    }

    function satLoc() {

      const mapsUrl = `https://maps.app.goo.gl/dWV5W3EcN7d82KJE8`;

      window.open(mapsUrl, "_blank");
    }

</script>

