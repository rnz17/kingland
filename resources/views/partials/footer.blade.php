
<div class="absolute -z-10 flex flex-col w-full bg-lightblue h-auto px-8 lg:px-0 py-24 shadow-inner">
    <div class="w-full lg:flex w-full bg-lightblue h-auto px-8 lg:px-0 ">
        <div class="w-full lg:w-1/3 flex px-4 pb-12 lg:py-0">
            <img src="{{ asset('images/kingland/logo_wide.png') }}" class="w-full m-auto">
        </div>
        <div class="w-full lg:w-2/3 flex justify-around text-xl">
            <div class="flex flex-col font-semibold text-gray text-center">
                <h3 class="font-bold text-black text-xl mb-2"><a href="{{ route('contact')}}" class="underline">Contact Us</a></h3>
                <a href="#" class="copyLink text-lg hover:scale-x-105 duration-200" data-text="09999913432">09999913432</a>
                <a href="#" class="copyLink text-lg hover:scale-x-105 duration-200" data-text="09564572521">09564572521</a>
            </div>
            <div class="flex flex-col font-semibold text-gray text-center">
                <h3 class="font-bold text-black text-xl mb-2">Our Company</h3>
                <a href="{{ '/founders' }}" class="text-lg hover:scale-x-105 duration-200">Leaders</a>
                <a href="{{ '/sng' }}" class="text-lg hover:scale-x-105 duration-200">Structure and Governance</a>
                <a href="{{ '/pvp' }}" class="text-lg hover:scale-x-105 duration-200">Purpose, Values, and Principles</a>
            </div>
        </div>
    </div>
    <div class="text-center pt-24">
        <h1 class="text-xl font-bold text-gray tracking-widest">Ⓒ 2025 Kingland Marketing Company Inc.</h1>
    </div>
</div>

<script>
    // Select all links with the class "copyLink"
    const copyLinks = document.querySelectorAll(".copyLink");

    copyLinks.forEach(link => {
      link.addEventListener("click", function (event) {
        event.preventDefault(); // Prevent default link behavior

        // Get the text to copy from the data-text attribute
        const textToCopy = this.getAttribute("data-text");

        // Use the Clipboard API to copy the text
        navigator.clipboard.writeText(textToCopy)
          .then(() => alert(`Text copied: ${textToCopy}`))
          .catch(err => console.error("Failed to copy text:", err));
      });
    });
</script>