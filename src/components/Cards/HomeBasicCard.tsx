import React from 'react';

export interface HomeBasicCardProps {
  icon?: React.ReactNode;
  title: string;
  description: string;
  bgClassName?: string; // Tailwind or custom class for background
  overlayImage?: string; // Optional overlay pattern/image
  children?: React.ReactNode;
  className?: string;
}

const HomeBasicCard: React.FC<HomeBasicCardProps> = ({
  icon,
  title,
  description,
  bgClassName = 'bg-secondary/90',
  overlayImage,
  children,
  className = '',
}) => {
  return (
    <div
      className={`relative p-8 rounded-2xl shadow-lg hover:scale-105 transition-transform ${bgClassName} ${className}`}
      style={{ overflow: 'hidden' }}
    >
      {overlayImage && (
        <div
          className="absolute inset-0 opacity-90 pointer-events-none"
          style={{
            backgroundImage: `url(${overlayImage})`,
            backgroundRepeat: 'no-repeat',
            backgroundPosition: 'top',
            backgroundSize: 'cover',
            zIndex: 0,
          }}
        />
      )}
      <div className="relative z-10 flex flex-col items-center text-center">
        {icon && <div className="mb-4 text-4xl text-main">{icon}</div>}
        <h3 className="text-2xl text-main font-semibold mb-3">{title}</h3>
        <p className="text-gray-200">{description}</p>
        {children && <div className="mt-4">{children}</div>}
      </div>
    </div>
  );
};

export default HomeBasicCard;