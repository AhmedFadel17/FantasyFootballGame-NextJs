export const formErrorsPopup = (t:any,errorData: ApiError) => {
    return (
        <div
            className={`max-w-sm w-full bg-white shadow-lg rounded-lg pointer-events-auto ring-1 ring-black ring-opacity-5 p-4 border-l-4 border-red-500 ${t.visible ? 'animate-enter' : 'animate-leave'
                }`}
        >
            <div className="flex flex-col">
                <strong className="text-red-700 mb-2">{errorData.message}</strong>
                <ul className="space-y-1">
                    {errorData.data?.map((err, idx) => (
                        <li key={idx} className="text-sm text-gray-800">
                            <span className="font-medium text-red-600">{err.code}:</span>{' '}
                            {err.description}
                        </li>
                    ))}
                </ul>
            </div>
        </div>
    )
}

