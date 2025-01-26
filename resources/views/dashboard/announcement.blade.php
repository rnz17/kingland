@include('partials.head')

@include('partials.nav')

<div class="w-full flex flex-col p-24">
    <div class="m-auto w-3/4">
        <table class="w-full text-sm text-left rtl:text-right border border-black text-gray-500">
            <thead class="text-xs text uppercase bg-notwhite">
                <tr>
                    <th scope="col" class="border border-black px-6 py-3 text-left text-xs font-medium text-gray uppercase tracking-wider text-center p-1">
                        Announcement
                    </th>
                    <th scope="col" class="border border-black px-6 py-3 text-left text-xs font-medium text-gray uppercase tracking-wider text-center p-1">
                        Delete
                    </th>
            </thead>
            <tbody>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <tr>
                        @if($contents->count() >= 0)
                            @foreach($contents as $content)
                            <tr>
                                <td class="text-center p-1 border border-gray-300">
                                    {{ $content->content }}
                                </td>
                                <td class="text-center p-1 border border-gray-300">
                                    <form action="{{ route('announcements.delete')}}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <input type="hidden" name="id" value="{{ $content->id }}">
                                        <button class="left-full w-1/3 border border-gray bg-red-300 px-6 py-0 rounded-lg hover:scale-105 duration-500" type="submit">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        @else
                            <tr>
                                <td class="text-center p-1">
                                    No Content Available
                                </td>
                            </tr>
                        @endif
                    </tr>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="flex flex-col w-3/4 p-2 m-auto mt-32">
        <form method="post" action="{{ route('announcements.store') }}">
            @csrf
            @method('POST')
            <div class="w-full flex flex-col w-full p-12 mb-6 lg:mb-0 bg-notwhite rounded-xl border border-gray-300">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="content">
                    Add Announcement
                </label>
                <div class="flex w-full">
                    <input class="appearance-none block w-3/4 bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 rounded shadow leading-tight focus:outline-none focus:shadow-outline m-auto"  type="text" name="content">
                    <button class="bg-lightblue hover:bg-blue font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline m-auto" type="submit">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>