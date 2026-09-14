// src/App.jsx
import { useState } from 'react';
import { Header } from './components/Header';
import { SearchBar } from './components/SearchBar';
import { RestaurantCard } from './components/RestaurantCard';
import { mockRestaurants } from './data/mockRestaurants';

export default function App() {
  const [searchTerm, setSearchTerm] = useState('');

  // Lógica de filtragem reativa por Nome ou Categoria
  const filteredRestaurants = mockRestaurants.filter((restaurant) =>
    restaurant.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
    restaurant.type.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="min-h-screen bg-slate-50">
      <Header />
      <SearchBar searchTerm={searchTerm} setSearchTerm={setSearchTerm} />
      
      <main className="max-w-md mx-auto p-4">
        <p className="text-xs font-bold text-slate-400 uppercase tracking-wider mb-3">
          {filteredRestaurants.length} estabelecimentos encontrados
        </p>

        {filteredRestaurants.length === 0 ? (
          <div className="text-center py-8 text-slate-500 text-sm">
            Nenhum playground encontrado para "{searchTerm}".
          </div>
        ) : (
          filteredRestaurants.map((restaurant) => (
            <RestaurantCard key={restaurant.id} restaurant={restaurant} />
          ))
        )}
      </main>
    </div>
  );
}