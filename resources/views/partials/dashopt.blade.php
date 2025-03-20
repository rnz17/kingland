<div class="flex mt-4 w-full">
    <div class="m-auto w-auto flex gap-x-4">
        <a href="{{ route('dashboard') }}" class="w-[19vw]">
            <div class="text-center py-4 rounded-t-xl {{ request()->is('dashboard') ? 'bg-lightergray text-textblue' : 'bg-notwhite text-textblue shadow-inner-dash' }}">
                <h1 class="font-medium tracking-wide text-2xl">Products</h1>
            </div>
        </a>
        <a href="{{ route('categories.index') }}" class="w-[19vw]">
            <div class="text-center py-4 rounded-t-xl {{ request()->is('*categories') ? 'bg-lightergray text-textblue' : 'bg-notwhite text-textblue shadow-inner-dash' }}">
                <h1 class="font-medium tracking-wide text-2xl">Categories</h1>
            </div>
        </a>
        <a href="{{ route('announcements.index') }}" class="w-[19vw]">
            <div class="text-center py-4 rounded-t-xl {{ request()->is('*announcements') ? 'bg-lightergray text-textblue' : 'bg-notwhite text-textblue shadow-inner-dash' }}">
                <h1 class="font-medium tracking-wide text-2xl">Announcement</h1>
            </div>
        </a>
        <a href="{{ route('suppliers.index') }}" class="w-[19vw]">
            <div class="text-center py-4 rounded-t-xl {{ request()->is('*suppliers') ? 'bg-lightergray text-textblue' : 'bg-notwhite text-textblue shadow-inner-dash' }}">
                <h1 class="font-medium tracking-wide text-2xl">Suppliers</h1>
            </div>
        </a>
        <a href="{{ route('carousel.index') }}" class="w-[19vw]">
            <div class="text-center py-4 rounded-t-xl {{ request()->is('*carousel') ? 'bg-lightergray text-textblue' : 'bg-notwhite text-textblue shadow-inner-dash' }}">
                <h1 class="font-medium tracking-wide text-2xl">Carousel</h1>
            </div>
        </a>
    </div>
</div>