import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { HeaderComponent } from './features/nav/header/header.component';
import { JumbotronComponent } from './features/jumbotron/jumbotron.component';
import { FooterComponent } from './features/nav/footer/footer.component';
import { FeaturedListComponent } from './features/featured-list/featured-list.component';

@NgModule({
  declarations: [
    AppComponent,
    HomePageComponent,
    HeaderComponent,
    JumbotronComponent,
    FooterComponent,
    FeaturedListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
