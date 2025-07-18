
export const SimpleCard = ({
  title,
  description,
  containerClasses = 'bg-secondary',
  titleClasses = 'text-main',
  descriptionClasses = 'text-gray-300',
}: SimpleCardProps) => (
  <div className={`p-6 rounded-xl uppercase ${containerClasses}`}>
    <h3 className={`text-2xl font-semibold mb-2 ${titleClasses}`}>{title}</h3>
    <p className={descriptionClasses}>{description}</p>
  </div>
);
