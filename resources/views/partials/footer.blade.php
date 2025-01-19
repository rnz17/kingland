<div class="absolute -z-10 mt-32 lg:flex w-full bg-lightblue h-auto px-8 lg:px-0 py-8 pb-12 shadow-inner">
    <div class="w-full lg:w-1/3 flex px-4 pb-12 lg:py-0">
        <img src="{{ asset('images/kingland/logo_wide.png') }}" class="w-full m-auto">
    </div>
    <div class="w-full lg:w-2/3 flex justify-around text-xl">

        <div class="flex flex-col text-textblue text-center">
            <h3 class="font-medium mb-2">Contact Us</h3>
            <a href="#" class="copyLink font-thin text-lg hover:scale-x-105 duration-200" data-text="09">09#########</a>
            <a href="#" class="copyLink font-thin text-lg hover:scale-x-105 duration-200" data-text="09564572521">09564572521</a>
        </div>
        
        <div class="flex flex-col text-textblue text-center">
            <h3 class="font-bold mb-2">Our Company</h3>
            <a href="{{ '/founders' }}" class="font-thin text-lg hover:scale-x-105 duration-200">Leaders</a>
            <a href="{{ '/sng' }}" class="font-thin text-lg hover:scale-x-105 duration-200">Structure and Governance</a>
            <a href="#" class="font-thin text-lg hover:scale-x-105 duration-200"></a>
            <a href="#" class="font-thin text-lg hover:scale-x-105 duration-200"></a>
        </div>

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