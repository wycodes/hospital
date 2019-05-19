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
public class Yuyue2 extends Model<Yuyue2> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer deletestatus;

    private Integer riqi;

    private Integer shiji;

    private String week;

    private Integer jianchaid;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
