'use client';

import { ReactNode } from "react";

type PitchPositionContainerProps = {
  children: ReactNode;
};

export const PitchPositionContainer = ({ children }: PitchPositionContainerProps) => {
  return (
    <div className='flex items-center gap-16 justify-center mb-10'>
      {children}
    </div>
  );
};
