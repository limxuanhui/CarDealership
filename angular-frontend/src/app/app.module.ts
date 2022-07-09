import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { HeaderComponent } from './features/nav/header/header.component';
import { JumbotronComponent } from './features/jumbotron/jumbotron.component';

@NgModule({
  declarations: [
    AppComponent,
    HomePageComponent,
    HeaderComponent,
    JumbotronComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
