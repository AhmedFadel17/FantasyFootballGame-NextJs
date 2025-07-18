import { useDispatch, useSelector } from 'react-redux';
import { increment, decrement } from '@/store/slices/counterSlice';
import type { RootState, AppDispatch } from '@/store';

const Counter = () => {
  const count = useSelector((state: RootState) => state.counter.value);
  const dispatch = useDispatch<AppDispatch>();

  return (
    <div className="text-center mt-10">
      <h1 className="text-4xl font-bold mb-4">Counter: {count}</h1>
      <div className="flex justify-center gap-4">
        <button
          onClick={() => dispatch(decrement())}
          className="bg-red-500 text-white px-4 py-2 rounded"
        >
          -
        </button>
        <button
          onClick={() => dispatch(increment())}
          className="bg-green-500 text-white px-4 py-2 rounded"
        >
          +
        </button>
      </div>
    </div>
  );
};

export default Counter;
