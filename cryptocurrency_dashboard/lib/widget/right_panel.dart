import 'package:cryptocurrency_dashboard/widget/colors.dart';
import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332.0,
      // color: Colors.red,
      padding: EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildCard(),
          _buildBalance(),
          _buildActiveMine(),
          _buildActiveDevice(),
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 28.0, 30.0),
      child: Container(
        height: 125.0,
        decoration: BoxDecoration(
          color: AppColors.purple,
          image: DecorationImage(
            image: AssetImage('assets/images/level_info.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.purple.withOpacity(0.2),
              offset: Offset(0, 4),
              blurRadius: 20.0,
            )
          ],
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 26.0),
            Stack(
              children: <Widget>[
                SizedBox(
                  width: 66.0,
                  height: 66.0,
                  child: CircularProgressIndicator(
                    backgroundColor: Color(0xFF582DE3),
                    valueColor: AlwaysStoppedAnimation(AppColors.green),
                    value: 0.5,
                    strokeWidth: 4,
                  ),
                ),
                Container(
                  width: 66.0,
                  height: 66.0,
                  alignment: Alignment.center,
                  child: Text(
                    'XP',
                    style: TextStyle(
                      color: AppColors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Level 22',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  '354 XP Lntil Level 23',
                  style: TextStyle(
                    color: AppColors.orange,
                    fontSize: 10.0,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Next bounes 152 Satoshis',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 7.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBalance() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'MY BALANCE',
            style: TextStyle(
              color: AppColors.greyText,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '350,000',
            style: TextStyle(
              color: AppColors.blackText,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 14.0),
          Text(
            r"Satoshis $50.89 USD",
            style: TextStyle(
              color: AppColors.orange.withOpacity(0.8),
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActiveMine() {
    Widget buildItem({
      Color color,
      IconData icon,
      String title,
      bool isEst = false,
    }) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 58.0,
              width: 58.0,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.4),
                    offset: Offset(0, 4),
                    blurRadius: 10.0,
                  )
                ],
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 18.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.blackText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  isEst ? r'$25.03' : 'Running...',
                  style: TextStyle(
                    color: isEst ? AppColors.greyText : AppColors.green,
                    fontSize: 11.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            !isEst
                ? Switch(
                    activeColor: Colors.white,
                    activeTrackColor: AppColors.green,
                    value: true,
                    onChanged: (value) {},
                  )
                : SizedBox.shrink(),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 60, top: 38, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'ACTIVE MINE & DAILY EST',
            style: TextStyle(
              color: AppColors.greyText,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 18.0),
          buildItem(
            color: Colors.yellow,
            icon: Icons.computer,
            title: 'GPUs mining',
          ),
          buildItem(
            color: AppColors.orange,
            icon: Icons.battery_std,
            title: 'CPUs mining',
          ),
          buildItem(
            color: AppColors.purple,
            icon: Icons.calendar_today,
            title: 'Est. daily USD',
            isEst: true,
          ),
        ],
      ),
    );
  }

  Widget _buildActiveDevice() {
    Widget buildItem({IconData icon, String text}) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 58.0,
              width: 58.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 4),
                    blurRadius: 18.0,
                  )
                ],
              ),
              child: Icon(
                icon,
                color: AppColors.grey,
                size: 22.0,
              ),
            ),
            SizedBox(width: 18.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    color: AppColors.blackText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 6.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    SizedBox(width: 6.0),
                    Text(
                      'Active',
                      style: TextStyle(
                        color: AppColors.greyText,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              size: 18,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'ACTIVE DEVICE',
            style: TextStyle(
              color: AppColors.greyText,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 18.0),
          buildItem(
            icon: Icons.phone_iphone,
            text: 'iPhone 6s Plus',
          ),
          buildItem(
            icon: Icons.laptop_mac,
            text: 'Macbook 2019',
          ),
        ],
      ),
    );
  }
}
