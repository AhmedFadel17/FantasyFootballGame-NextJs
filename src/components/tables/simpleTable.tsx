'use client'

export const SimpleTable = ({ icon, title, columns, data }: SimpleTableProps) => {
  return (
    <section className="">
      <div className="w-full justify-center antialiased text-gray-600 mx-auto bg-white shadow-lg rounded-sm border border-gray-200">
        <header className="px-5 py-4 border-b border-gray-100">
          <h2 className="flex items-center font-semibold text-gray-800">
            {icon}
            <span className='pl-2'>{title}</span>
          </h2>
        </header>
        <div className="p-3">
          <div className="overflow-x-auto">
            <table className="table-auto w-full">
              <thead className="text-xs font-semibold uppercase text-gray-400 bg-gray-50">
                <tr>
                  {columns.map((col) => (
                    <th key={col.key} className="p-2 whitespace-nowrap">
                      <div className="font-semibold text-left">{col.title}</div>
                    </th>
                  ))}
                </tr>
              </thead>
              <tbody className="text-sm divide-y divide-gray-100">
                {data.map((row, rowIndex) => (
                  <tr key={rowIndex}>
                    {columns.map((col) => (
                      <td key={col.key} className="p-2 whitespace-nowrap">
                        {col.render ? col.render(row[col.key], row) : (
                          <div className="text-left font-medium">{row[col.key]}</div>
                        )}
                      </td>
                    ))}
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
  );
};
