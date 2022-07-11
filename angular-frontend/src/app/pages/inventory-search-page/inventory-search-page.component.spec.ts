import { ComponentFixture, TestBed } from '@angular/core/testing';

import { InventorySearchPageComponent } from './inventory-search-page.component';

describe('InventorySearchPageComponent', () => {
  let component: InventorySearchPageComponent;
  let fixture: ComponentFixture<InventorySearchPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ InventorySearchPageComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(InventorySearchPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
