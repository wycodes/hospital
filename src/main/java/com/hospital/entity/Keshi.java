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
public class Keshi extends Model<Keshi> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String ctime;

    private Integer deletestatus;

    private String jieshao;

    private String ktitle;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
