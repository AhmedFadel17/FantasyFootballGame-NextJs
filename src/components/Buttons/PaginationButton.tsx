'use client';
import { PaginationButtonType } from "@/types/enums";
import { JSX } from "react";
import { GrPrevious } from "react-icons/gr";
import { GrNext } from "react-icons/gr";




export const PaginationButton = ({ btnType, customIcon, customTitle }: PaginationButtonProps) => {
    let content: JSX.Element;

    switch (btnType) {
        case PaginationButtonType.Next:
            content = (
                <>
                    <span className="mr-2">Next</span>
                    <GrNext />
                </>
            );
            break;
        case PaginationButtonType.Prev:
            content = (
                <>
                    <GrPrevious />
                    <span className="ml-2">Previous</span>
                </>
            );
            break;
        case PaginationButtonType.Custom:
            content = (
                <>
                    {customTitle && <span className="mr-2">{customTitle}</span>}
                    {customIcon}
                </>
            );
            break;
        default:
            content = <></>; // fallback
    }

    return (
        <button type="button" className="btn btn-primary text-center justify-center min-w-28 flex items-center bg-mid-gray hover:bg-main cursor-pointer hover:text-white rounded p-2">
            {content}
        </button>
    );
};
