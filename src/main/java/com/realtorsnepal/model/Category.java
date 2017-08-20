package com.realtorsnepal.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.io.Serializable;

/**
 * Created by Samima on 5/17/2017.
 */
public class Category implements Serializable {
    private static final long serialVersionUID = -5609980169419783069L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int categoryId;

    @NotEmpty(message = "The category name must not be null.")
    private String categoryName;
    @NotEmpty(message = "The category slug must not be null.")
    private String categorySlug;
    @NotEmpty(message = "The category description must not be null.")
    private String categoryDescription;
    @Transient
    private MultipartFile categoryImage;

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategorySlug() {
        return categorySlug;
    }

    public void setCategorySlug(String categorySlug) {
        this.categorySlug = categorySlug;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public MultipartFile getCategoryImage() {
        return categoryImage;
    }

    public void setCategoryImage(MultipartFile categoryImage) {
        this.categoryImage = categoryImage;
    }
}
