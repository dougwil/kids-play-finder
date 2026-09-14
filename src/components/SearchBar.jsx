// src/components/SearchBar.jsx (Trecho atualizado das props e input)
import { Search, List, Map as MapIcon, SlidersHorizontal } from 'lucide-react';

export function SearchBar({ searchTerm, setSearchTerm }) {
  return (
    <div className="bg-white p-4 shadow-sm sticky top-0 z-10">
      <div className="max-w-md mx-auto space-y-4">
        
        <div className="relative">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400 w-5 h-5" />
          <input 
            type="text" 
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            placeholder="Buscar restaurantes com playground..." 
            className="w-full pl-10 pr-4 py-3 bg-slate-100 border-none rounded-xl focus:ring-2 focus:ring-blue-500 outline-none text-slate-700 placeholder-slate-500 transition-shadow"
          />
        </div>

        <div className="flex justify-between items-center gap-2">
          <div className="flex bg-slate-100 rounded-lg p-1">
            <button className="flex items-center gap-2 px-4 py-2 bg-white shadow-sm rounded-md text-sm font-medium text-slate-800 transition-all">
              <List className="w-4 h-4" />
              Lista
            </button>
            <button className="flex items-center gap-2 px-4 py-2 text-sm font-medium text-slate-500 hover:text-slate-800 transition-all">
              <MapIcon className="w-4 h-4" />
              Mapa
            </button>
          </div>
          
          <button className="flex items-center gap-2 px-4 py-2 bg-slate-100 hover:bg-slate-200 rounded-lg text-sm font-medium text-slate-700 transition-colors">
            <SlidersHorizontal className="w-4 h-4" />
            Filtros
          </button>
        </div>
      </div>
    </div>
  );
}