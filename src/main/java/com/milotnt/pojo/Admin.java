package com.milotnt.pojo;

//import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import org.springframework.data.relational.core.mapping.Table;

/**
 * @author ZhangMing [1157038410@qq.com]
 * @date 2024/8/10
 */
@Data
//@TableField("traffic_data.admin")
@Table("traffic_data.admin")
public class Admin {

    private Integer adminAccount;
    private String adminPassword;
//    public Integer getAdminAccount() {
//        return adminAccount;
//    }
//
//    public void setAdminAccount(Integer adminAccount) {
//        this.adminAccount = adminAccount;
//    }
//
//    public String getAdminPassword() {
//        return adminPassword;
//    }
//
//    public void setAdminPassword(String adminPassword) {
//        this.adminPassword = adminPassword;
//    }
//
//    @Override
//    public String toString() {
//        return "Admin{" +
//                "adminAccount=" + adminAccount +
//                ", adminPassword='" + adminPassword + '\'' +
//                '}';
//    }
}
