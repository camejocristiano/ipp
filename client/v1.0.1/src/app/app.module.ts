import { ArcosocupacionaisModule } from './arcosocupacionais/arcosocupacionais.module';
import { ArcosocupacionaisRoutingModule } from './arcosocupacionais/arcosocupacionais-routing.module';
import { cursosRouting } from './cursos/cursos.routing';
import { CursosModule } from './cursos/cursos.module';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { MaterializeModule } from 'angular2-materialize';

import { AppComponent } from './app.component';
import { NavBarComponent } from './nav-bar/nav-bar.component';
import { HomeComponent } from './home/home.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { routing } from './app.routing';
import { usersRouting } from "./users/users.routing";
import { UsersModule } from "./users/users.module";
import { FooterComponent } from './footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    NavBarComponent,
    HomeComponent,
    NotFoundComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    MaterializeModule,
    UsersModule,
    usersRouting,
    CursosModule,
    cursosRouting,
    routing,
    ArcosocupacionaisModule,
    ArcosocupacionaisRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }