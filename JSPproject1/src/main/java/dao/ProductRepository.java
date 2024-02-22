package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	
	public ProductRepository() {
		Product chair = new Product("P1234" , "Cesca chair" , 1700000);
		chair.setDescription("D57 x W46 x H46/79cm, Satin, wood, Rattan" );
		chair.setCategory("chair");
		chair.setManufacturer("knoll");
		chair.setUnitsInStock(1000);
		chair.setCondition("New");
		
		Product table = new Product("P1235", "Hauge table", 1949000);
		table.setDescription("D99 x W160 x H74.5cm , oak wood, steel, veneer, lacquered");
		table.setCategory("table");
		table.setManufacturer("BoConcept");
		table.setUnitsInStock(1000);
		table.setCondition("new");
		
		Product sofa = new Product("P1236", "Bolzano sofa", 4000000);
		sofa.setDescription("D91 x W176 x H42/76cm, 2.5seater, RightDirection, bucle(razio)fabric");
		sofa.setCategory("sofa");
		sofa.setManufacturer("BoConcept");
		sofa.setUnitsInStock(1000);
		sofa.setCondition("new");
		
		listOfProducts.add(chair);
		listOfProducts.add(table);
		listOfProducts.add(sofa);
		
		
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) 
			{
				productById = product;
				break;
			}
		}
		return productById;
	
	}	
	
}
