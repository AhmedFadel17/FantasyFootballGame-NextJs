import { configureStore } from '@reduxjs/toolkit';
import { api } from '@/services/api';
import authReducer from './slices/authSlice';
import transferReducer from './slices/transferSlice';
import pickTeamReducer from './slices/pickTeamSlice'
import myTeamReducer from './slices/myTeamSlice'

import storage from 'redux-persist/lib/storage';
import { persistReducer, persistStore } from 'redux-persist';
import { combineReducers } from 'redux';
import { identityApi } from '@/services/identityApi';
import fixturesReducer from './slices/fixturesSlice';

const persistConfig = {
  key: 'root',
  storage,
  whitelist: ['auth'], // persist only the auth slice
};
const rootReducer = combineReducers({
  auth: authReducer,
  
  fixtures: fixturesReducer,
  myTeam:myTeamReducer,
  pickTeam: pickTeamReducer,
  transfer: transferReducer,
  [api.reducerPath]: api.reducer,
  [identityApi.reducerPath]: identityApi.reducer,

});

const persistedReducer = persistReducer(persistConfig, rootReducer);


export const store = configureStore({
  reducer: persistedReducer,
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware({
      serializableCheck: false,
    })
    .concat(api.middleware)
    .concat(identityApi.middleware),
});

export const persistor = persistStore(store);


export type RootState = ReturnType<typeof store.getState>;
export type AppDispatch = typeof store.dispatch;