package com.example.webapplegalservice.controllers;

import com.example.webapplegalservice.models.Product;
import com.example.webapplegalservice.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/")
    public String Products(@RequestParam(name ="title", required = false) String title , Model model){
        model.addAttribute("products", productService.listProduct(title));
        return "products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable long id, Model model){
            model.addAttribute( "product", productService.getProductById(id));
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(Product product){
        productService.saveProduct(product);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable long id){
        productService.deleteProduct(id);
        return "redirect:/";
    }
}
