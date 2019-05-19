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
public class Record2 extends Model<Record2> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer deletestatus;

    private Integer riqi;

    private String status;

    private String ytime;

    private Integer userid;

    private Integer yuyue2id;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
