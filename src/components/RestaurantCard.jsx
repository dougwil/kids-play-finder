// src/components/RestaurantCard.jsx
import { Star, MapPin, ShieldCheck } from 'lucide-react';

export function RestaurantCard({ restaurant }) {
  // Garantia defensiva caso o objeto não exista
  if (!restaurant) return null;

  return (
    <div className="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden mb-4 hover:shadow-md transition-shadow">
      {/* Imagem e Badge de Nota */}
      <div className="relative h-44 w-full bg-slate-200">
        <img 
          src={restaurant.imageUrl} 
          alt={restaurant.name} 
          className="w-full h-full object-cover"
        />
        <div className="absolute top-3 right-3 bg-white/90 backdrop-blur-md px-2.5 py-1 rounded-full text-xs font-bold text-slate-800 flex items-center gap-1 shadow-sm">
          <Star className="w-3.5 h-3.5 fill-amber-400 text-amber-400" />
          {restaurant.rating}
        </div>
      </div>

      {/* Conteúdo do Card */}
      <div className="p-4">
        <div className="flex justify-between items-start mb-1">
          <h3 className="font-bold text-slate-800 text-lg">{restaurant.name}</h3>
          {restaurant.nbr16071Compliant && (
            <span className="flex items-center gap-1 text-<10px> bg-emerald-50 text-emerald-700 font-semibold px-2 py-0.5 rounded-md border border-emerald-200">
              <ShieldCheck className="w-3 h-3 text-emerald-600" />
              NBR 16071
            </span>
          )}
        </div>

        <p className="text-xs text-slate-500 mb-3 flex items-center gap-2">
          <span>{restaurant.type}</span> • 
          <span className="flex items-center gap-0.5"><MapPin className="w-3 h-3" /> {restaurant.distance}</span> • 
          <span className="font-semibold text-slate-700">{restaurant.price}</span>
        </p>

        {/* Badges de Infraestrutura (Proteção com Optional Chaining) */}
        <div className="flex flex-wrap gap-1.5">
          {restaurant.badges?.map((badge, index) => (
            <span key={index} className="text-<11px> bg-slate-100 text-slate-600 px-2.5 py-1 rounded-md font-medium">
              {badge}
            </span>
          ))}
        </div>
      </div>
    </div>
  );
}