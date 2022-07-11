import { Component, OnInit } from '@angular/core';
import { FeaturedVehicle } from 'src/app/core/interfaces/featured-vehicle';

@Component({
  selector: 'app-featured-list',
  templateUrl: './featured-list.component.html',
  styleUrls: ['./featured-list.component.scss'],
})
export class FeaturedListComponent implements OnInit {
  featuredVehicles!: FeaturedVehicle[];

  constructor() {
    this.featuredVehicles = [
      {
        year: (new Date('2022')).getFullYear(),
        make: 'Audi',
        model: 'R8',
        salePrice: 80000.0,
      },
      {
        year: (new Date('2021')).getFullYear(),
        make: 'Audi',
        model: 'A4',
        salePrice: 73000.0,
      },
      {
        year: (new Date('2022')).getFullYear(),
        make: 'Ferrari',
        model: '812 Superfast',
        salePrice: 112000.0,
      },
    ];
  }

  ngOnInit(): void {}
}
