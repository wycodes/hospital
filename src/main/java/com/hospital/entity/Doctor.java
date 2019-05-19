package com.hospital.entity;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;



import com.baomidou.mybatisplus.annotations.Version;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author plusDemo
 * @since 2019-05-19
 */
@Data
@Accessors(chain = true)
public class Doctor extends Model<Doctor> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String bianhao;

    private Integer deletestatus;

    private String jianjie;

    private String name;

    private String photo;

    private Integer renshu;

    private String shanchang;

    private String week;

    private String zhiwu;

    private Integer keshiid;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
