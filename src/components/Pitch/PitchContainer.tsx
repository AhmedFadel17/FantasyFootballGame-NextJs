'use client';

import { ReactNode } from "react";

type PitchContainerProps = {
  children: ReactNode;
};

export const PitchContainer = ({ children }: PitchContainerProps) => {
  return (
    <div className="min-h-[690px] bg-no-repeat bg-cover relative bg-center bg-top bg-size-[1122px_900px] bg-[url(/main/pitch.svg)]">
      {children}
    </div>
  );
};
