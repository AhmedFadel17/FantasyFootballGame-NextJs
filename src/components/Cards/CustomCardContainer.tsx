'use client';

import { ReactNode } from "react";
type CustomCardContainerProps = {
    children: ReactNode;
    title: string
};

export const CustomCardContainer = ({ children, title }: CustomCardContainerProps) => {
    return (
        <div className="bg-white rounded-xl shadow-md border border-gray-200 uppercase">

            <div className='bg-secondary mb-4 space-y-3 p-4 items-center text-gray-300 uppercase'>
                <div className=''>
                    <h4 className='font-bold text-main'>{title}</h4>
                </div>
            </div>
            {children}
        </div>

    );
};