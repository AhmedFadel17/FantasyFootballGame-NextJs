import { createSlice, createAsyncThunk, PayloadAction } from '@reduxjs/toolkit';

type Fixture = { id: number; date: string; teamA: string; teamB: string }; // adjust to your type
type FixturesState = {
  fixtures: Fixture[];
  page: number;
  totalPages: number;
  loading: boolean;
  error?: string;
};

const initialState: FixturesState = {
  fixtures: [],
  page: 1,
  totalPages: 1,
  loading: false,
};

export const fetchFixtures = createAsyncThunk(
  'fixtures/fetch',
  async (page: number) => {
    const res = await fetch(`/api/fixtures?gameweek=${page}`);
    if (!res.ok) throw new Error('Failed to fetch fixtures');
    return await res.json(); // { fixtures: Fixture[], totalPages: number }
  }
);

const fixturesSlice = createSlice({
  name: 'fixtures',
  initialState,
  reducers: {
    setPage: (state, action: PayloadAction<number>) => {
      state.page = action.payload;
    },
  },
  extraReducers: (builder) => {
    builder
      .addCase(fetchFixtures.pending, (state) => {
        state.loading = true;
      })
      .addCase(fetchFixtures.fulfilled, (state, action) => {
        state.loading = false;
        state.fixtures = action.payload.fixtures;
        state.totalPages = action.payload.totalPages;
      })
      .addCase(fetchFixtures.rejected, (state, action) => {
        state.loading = false;
        state.error = action.error.message;
      });
  },
});

export const { setPage } = fixturesSlice.actions;
export default fixturesSlice.reducer;
