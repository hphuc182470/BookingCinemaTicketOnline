/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package membership;

/**
 *
 * @author Admin
 */
public class MembershipDTO {

    private String memberID;
    private int totalSpend;
    private int discount;
    private String userName;

    public MembershipDTO() {
    }

    public MembershipDTO(String memberID, int totalSpend, int discount, String userName) {
        this.memberID = memberID;
        this.totalSpend = totalSpend;
        this.discount = discount;
        this.userName = userName;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public int getTotalSpend() {
        return totalSpend;
    }

    public void setTotalSpend(int totalSpend) {
        this.totalSpend = totalSpend;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "Membership{" + "memberID=" + memberID + ", totalSpend=" + totalSpend + ", discount=" + discount + ", userName=" + userName + '}';
    }

}
