import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-canais',
  templateUrl: './canais.component.html',
  styleUrls: ['./canais.component.css']
})
export class CanaisComponent implements OnInit {

   ngOnInit() {
      $(document).ready(function(){
        $('ul.tabs').tabs();
      });
  }
}
