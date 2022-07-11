import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { InventorySearchPageComponent } from './pages/inventory-search-page/inventory-search-page.component';

const routes: Routes = [
  {
    path: "inventory/new",
    component: InventorySearchPageComponent
  },
  {
    path: "inventory/used",
    component: InventorySearchPageComponent
  },
  {
    path: "home",
    component: HomePageComponent
  },
  {
    path: "",
    redirectTo: "home",
    pathMatch: "full"
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
