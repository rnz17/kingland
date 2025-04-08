<!-- policy -->
<div id="cBanner" class="flex flex-nowrap h-auto py-2 text-sm bg-blue shadow-lg w-full z-50 fixed bottom-0 left-0 right-0">
    <div class="m-auto text-center font-light text-white tracking-wide px-2 lg:px-1">
        <h1>Use of cookies - Our team uses cookies to analyze traffic and improve our website. Learn more about our <a href="{{ route('PrivacyPolicy') }}"><span class="underline">Privacy Policy</span></a></h1>
    </div>
    <div class="m-auto text-center font-light text-white tracking-wide">
        <button id="cookie-accept-btn" class="bg-green-200 rounded-lg px-6 text-textblue">I understand</button>
    </div>
</div>

<!-- footer -->
<div class="absolute -z-10 flex flex-col w-full bg-lightblue h-auto px-8 lg:px-0 py-24 shadow-inner">
    <!-- main -->
        <div class="w-full lg:flex w-full bg-lightblue h-auto px-8 lg:px-0 ">
            <div class="w-full lg:w-1/3 flex px-4 pb-12 lg:py-0">
                <img src="{{ asset('images/kingland/logo_wide.png') }}" class="w-full m-auto">
            </div>
            <div class="w-full flex flex-wrap gap-y-12 lg:w-2/3 flex justify-around text-xl">
                <div class="flex flex-col w-full md:w-1/2 m-auto font-semibold text-gray text-center">
                    <h3 class="font-bold text-black text-xl mb-2"><a href="{{ route('contact')}}" class="underline">Contact Us</a></h3>
                    <a href="#" class="copyLink text-lg hover:scale-x-105 duration-200" data-text="09999913432">09999913432</a>
                    <a href="#" class="copyLink text-lg hover:scale-x-105 duration-200" data-text="09564572521">09564572521</a>
                </div>
                <div class="flex flex-col w-full md:w-1/2 m-auto font-semibold text-gray text-center">
                    <h3 class="font-bold text-black text-xl mb-2">Our Company</h3>
                    <a href="{{ '/founders' }}" class="text-lg hover:scale-x-105 duration-200">Leaders</a>
                    <a href="{{ '/sng' }}" class="text-lg hover:scale-x-105 duration-200">Structure and Governance</a>
                    <a href="{{ '/pvp' }}" class="text-lg hover:scale-x-105 duration-200">Purpose, Values, and Principles</a>
                    <a href="{{ route('PrivacyPolicy') }}" class="text-lg hover:scale-x-105 duration-200">Privacy Policy</a>
                </div>
            </div>
        </div>
    <!-- bottom -->
        <div class="text-center pt-24">
            <h1 class="text-xl font-bold text-gray tracking-widest">Ⓒ 2025 Kingland Marketing Company Inc.</h1>
        </div>
</div>

<!-- <script src="//code.tidio.co/nwuy8rcrbg4lga42vs2eeu6jbhsbmzps.js" async></script> -->

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Get the cookie banner and accept button
        var banner = document.getElementById('cBanner');
        var acceptBtn = document.getElementById('cookie-accept-btn');
        
        // Check if the banner element exists before trying to access its classList
        if (banner && acceptBtn) {

            // Check if user already accepted cookies
            if (localStorage.getItem('cookieConsent') == 'true') {
                banner.classList.toggle('hidden');

                if (window.tidioChatScriptLoaded) return;

                const script = document.createElement("script");
                script.src = "//code.tidio.co/nwuy8rcrbg4lga42vs2eeu6jbhsbmzps.js"; // replace with your Tidio key
                script.async = true;
                document.body.appendChild(script);

                window.tidioChatScriptLoaded = true;
            }

            // Handle the button click
            acceptBtn.addEventListener('click', function () {
                localStorage.setItem('cookieConsent', 'true');
                banner.classList.toggle('hidden');

                if (window.tidioChatScriptLoaded) return;

                const script = document.createElement("script");
                script.src = "//code.tidio.co/nwuy8rcrbg4lga42vs2eeu6jbhsbmzps.js"; // replace with your Tidio key
                script.async = true;
                document.body.appendChild(script);

                window.tidioChatScriptLoaded = true;

            });
        }
    });
</script>

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