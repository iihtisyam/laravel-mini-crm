<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Employees') }}
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="flex justify-end mb-4">
                <a href="{{ route('employees.create') }}" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                    Add Employee
                </a>
            </div>

            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <table class="w-full table-auto border border-gray-300">
                        <thead>
                            <tr class="bg-gray-100">
                                <th class="border px-4 py-2">First Name</th>
                                <th class="border px-4 py-2">Last Name</th>
                                <th class="border px-4 py-2">Company</th>
                                <th class="border px-4 py-2">Email</th>
                                <th class="border px-4 py-2">Phone</th>
                                <th class="border px-4 py-2">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($employees as $employee)
                                <tr>
                                    <td class="border px-4 py-2">{{ $employee->first_name }}</td>
                                    <td class="border px-4 py-2">{{ $employee->last_name }}</td>
                                    <td class="border px-4 py-2">{{ $employee->company->name }}</td>
                                    <td class="border px-4 py-2">{{ $employee->email }}</td>
                                    <td class="border px-4 py-2">{{ $employee->phone }}</td>
                                    <td class="border px-4 py-2 space-x-2">
                                        <a href="{{ route('employees.edit', $employee) }}" class="bg-yellow-400 hover:bg-yellow-500 text-black font-semibold py-1 px-3 rounded">Edit</a>
                                        <form action="{{ route('employees.destroy', $employee) }}" method="POST" class="inline-block" onsubmit="return confirm('Are you sure?');">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="bg-red-500 hover:bg-red-700 text-black font-semibold py-1 px-3 rounded">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="6" class="text-center py-4 text-gray-500">No employees found.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>

                    <div class="mt-4">
                        {{ $employees->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
