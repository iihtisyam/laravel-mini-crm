<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Companies') }}
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="flex justify-end mb-4">
                <a href="{{ route('companies.create') }}" class="bg-blue-500 hover:bg-blue-700 text-black font-bold py-2 px-4 rounded">
                    Add Company
                </a>
            </div>

            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <table class="w-full table-auto border border-gray-300">
                        <thead>
                            <tr class="bg-gray-100">
                                <th class="border px-4 py-2">Name</th>
                                <th class="border px-4 py-2">Email</th>
                                <th class="border px-4 py-2">Logo</th>
                                <th class="border px-4 py-2">Website</th>
                                <th class="border px-4 py-2">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($companies as $company)
                                <tr>
                                    <td class="border px-4 py-2">{{ $company->name }}</td>
                                    <td class="border px-4 py-2">{{ $company->email }}</td>
                                    <td class="border px-4 py-2">
                                        @if($company->logo)
                                            <img src="{{ asset('storage/' . $company->logo) }}" width="50" class="rounded">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                    <td class="border px-4 py-2">{{ $company->website }}</td>
                                    <td class="border px-4 py-2 space-x-2">
                                        <a href="{{ route('companies.edit', $company) }}" class="bg-yellow-400 hover:bg-yellow-500 text-black font-semibold py-1 px-3 rounded">
                                            Edit
                                        </a>
                                        <form action="{{ route('companies.destroy', $company) }}" method="POST" class="inline-block" onsubmit="return confirm('Are you sure?');">
                                            @csrf @method('DELETE')
                                            <button type="submit" class="bg-red-500 hover:bg-red-700 text-black font-semibold py-1 px-3 rounded">
                                                Delete
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="5" class="text-center py-4 text-gray-500">No companies found.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>

                    <div class="mt-4">
                        {{ $companies->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
