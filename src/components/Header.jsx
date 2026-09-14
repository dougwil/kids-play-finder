// src/components/Header.jsx
import { MapPin } from 'lucide-react';

export function Header() {
  return (
    <header className="bg-slate-900 text-white p-4 shadow-md">
      <div className="max-w-md mx-auto flex justify-between items-center">
        <h1 className="text-xl font-bold flex items-center gap-2">
          <MapPin className="text-blue-400 w-6 h-6" />
          {"Kid's Play Finder"}
        </h1>
        <div className="flex items-center gap-1 text-xs bg-slate-800 px-3 py-1.5 rounded-full border border-slate-700">
          <MapPin className="w-3.5 h-3.5 text-slate-400" />
          <span>Maringá, PR</span>
        </div>
      </div>
    </header>
  );
}